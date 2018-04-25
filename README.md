# lifePower
Life Power is your Battery Delivery Company software

# Cowboy Runner

### Description
To be added

------------

### Features
- [ ] To be added
- [ ] To be added

------------

### Development workflow
1. Create an issue on github with the detailed description of what needs to be done. Keep the issue small.
2. Assign it to yourself if you are going to work on this issue.
3. Clone the repo if you have not done so yet.
4. `git checkout master`
5. `git pull`
6. Create a branch with the issue number. `git checkout -b issue_{number}`
7. Make your changes/implementation. Make sure to add Java documentation. Look at the example below.
8. `git add {filename}` for specific files or `git add .` for all.
9. `git commit -m "{title of the issue}, closes {#issue_number}"`
10. `git pull origin master` then `git push origin issue_{number}`. Resolve conflict if there is any.
11. Go to github and create a pull request (PR). Example: `issue_1234 --> master`. Tag someone to review it.
12. Merge it with master if its approved.

------------

##### Resolving merge conflict
1. `git checkout issue_{number}`
2. `git pull origin master`
3. Resolve the conflict.
4. Add the changes, commit, then push again to your branch. You do not need to create another PR.

------------

### Project File Structure
- **life-power** - name of the project


------------

### Shared Google Drive
Click [here](https://drive.google.com/drive/folders/1gpmapIIgka5MLlki0j96fCFy7nNeois3?usp=sharing) for shared google drive


------------

##### HTML Documentation Comments

------------

##### Python Documentation Comments
Follow PEP 257's docstring guidelines. reStructured Text and Sphinx can help to enforce these standards.

Use one-line docstrings for obvious functions.

"""Return the pathname of ``foo``."""
Multiline docstrings should include

Summary line
Use case, if appropriate
Args
Return type and semantics, unless None is returned
"""Train a model to classify Foos and Bars.

Usage::

    >>> import klassify
    >>> data = [("green", "foo"), ("orange", "bar")]
    >>> classifier = klassify.train(data)

:param train_data: A list of tuples of the form ``(color, label)``.
:rtype: A :class:`Classifier <Classifier>`
"""
Notes

Use action words ("Return") rather than descriptions ("Returns").
Document __init__ methods in the docstring for the class.
class Person(object):
    """A simple representation of a human being.

    :param name: A string, the person's name.
    :param age: An int, the person's age.
    """
    def __init__(self, name, age):
        self.name = name
        self.age = age
On comments
Use them sparingly. Prefer code readability to writing a lot of comments. Often, small methods are more effective than comments.

No

# If the sign is a stop sign
if sign.color == 'red' and sign.sides == 8:
    stop()
Yes

def is_stop_sign(sign):
    return sign.color == 'red' and sign.sides == 8

if is_stop_sign(sign):
    stop()
When you do write comments, remember: "Strunk and White apply." - PEP 8

Line lengths
Don't stress over it. 80-100 characters is fine.

Use parentheses for line continuations.

wiki = (
    "The Colt Python is a .357 Magnum caliber revolver formerly manufactured "
    "by Colt's Manufacturing Company of Hartford, Connecticut. It is sometimes "
    'referred to as a "Combat Magnum". It was first introduced in 1955, the '
    "same year as Smith & Wesson's M29 .44 Magnum."
)

Module Authorship
__author__ = "Rob Knight, Gavin Huttley, and Peter Maxwell"
__copyright__ = "Copyright 2007, The Cogent Project"
__credits__ = ["Rob Knight", "Peter Maxwell", "Gavin Huttley",
                    "Matthew Wakefield"]
__license__ = "GPL"
__version__ = "1.0.1"
__maintainer__ = "Rob Knight"
__email__ = "rob@spot.colorado.edu"
__status__ = "Production"

------------

