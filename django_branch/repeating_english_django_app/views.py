from django.shortcuts import render
from django.contrib.auth.forms import UserCreationForm


def signup(request):
    form = UserCreationForm(request.POST or None)
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return render('repeating_english_django_app/signup.html')
        else:
            return render(request, 'repeating_english_django_app/signup.html', {'form': form})
    else:
        return render(request, 'repeating_english_django_app/signup.html', {'form': form})
