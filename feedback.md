

## sebastian-patrick-henry-aaron

##### https://github.com/lmu-cmsi2022-spring2022/your-own-sebastian-patrick-henry-aaron

| Category | Feedback | Points |
| --- | --- | ---: |
| | _ideation.md_ | |
| • Audiences | Audiences are listed | 5/5 |
| • Ten (10) needs | Ten needs are stated sufficiently | 10/10 |
| • Three (3) projects | Three possible projects are listed | 6/6 |
| • Three (3) sets of goals/ideas | Each project has goals/ideas attached to it | 6/6 |
| • Project choice | A winning project/app is indicated | 3/3 |
| • Content-completion | Initial _ideation.md_ content looks complete as of 0419, one day after target (–1) | -1 |
| | _pitch.md_ | |
| • In-class workshop | Everyone but Henry participated in-class—points will be assigned individually (–4) | -4 |
| • Inspiration statement | Inspiration statement is provided, although it doesn’t quite follow the form given in Dr. Toal’s [ideation process page](https://cs.lmu.edu/~ray/notes/ideation/) (–1) | 3/4 |
| • 2–3 possible solutions | Three possible solutions are given | 10/10 |
| • Chosen fleshed-out idea | Chosen preliminary idea is fleshed out | 12/12 |
| • Human story | Human story is provided, phrased as specified in Dr. Toal’s [ideation process page](https://cs.lmu.edu/~ray/notes/ideation/) | 4/4 |
| • Conent-completion | Initial _pitch.md_ content looks complete as of 0425 |  |
| • In-class delivery | Pitch delivered in class 👏🏼 |  |
| | _about.md_ | |
| • Project title | Title is provided | 2/2 |
| • Team names and roles | Team members and your roles, except for Aaron’s, are listed (–3) | 9/12 |
| • Audience and their needs | Audience and their needs are explained | 10/10 |
| • Screenshots/video/demo | Screenshots are embedded in the _about_ document | 14/14 |
| • Technology highlights | Technology details are provided, as well as frustrations—I can understand the extra challenge involved there, but I’m somewhat disappointed that I’m hearing about the Keck admin issues only now. I could have potentially addressed those directly, or if not, I could have also gotten Masao involved directly. You didn’t have to endure those issues all week—this sounds like something that should have been brought to my attention right away | 12/12 |
| • Credits | I guess I can be credited, but just me…? |  |
| • In-class prsentation | Final presentation successfully delivered in class 👏🏼👏🏼👏🏼 |  |
| | **Baseline functionality** | |
| • Third-party web service API | Third-party API is successfully integrated | 25/25 |
| • Authentication | Authentication is done via Firebase email and Google auth…but it isn’t used at all outside of signing in and signing out (–5) | 5/10 |
| • Database | No database use seen (–25) | 0/25 |
| | **Implementation specifications** | |
| • Model objects | Model objects look appropriate, but nearly identical `Brewery` and `Brewery2` objects are defined solely due to different API functions? Kind of a big misunderstanding there—the duplicate definition is completely unnecessary (–2) | 6/8 |
| • Interaction with back-end | App interaction with the back end is by-and-large successful, but the point value must necessarily be reduced because in this case, the back end does not include database interaction (–4) | 8/12 |
| • Abstraction of back-end | Interactions with the back end are abstracted sufficiently, but similarly to back end interaction, credit must be reduced because no database abstraction was involved (–4) | 8/12 |
| • Feedback | In-progress feedback is rendered in appropriate situations | 7/7 |
| • Error-handling | Errors are caught and rendered for the user if they occur in the list views, but the API functions will just print something and `fatalError` out—way too brute force (–2)<br><br>Further, even though it isn’t used for much, sign out still “eats” any thrown errors—this might be rare, but your code already stores whether an error took place, so it wouldn’t have taken much to support this for sign-outs also (–2) (the BareBonesBlog starter code actually points out this deficiency 😅) | 3/7 |
| • Layout and composition | Layout feels appropriate for the app although it feels disjointed—I don’t see why the tabs are necessary; location usage can just be a filter on a centralized list of breweries (–2) | 5/7 |
| • Colors and other visuals | The bulk of colors/visuals here are somewhat derivative of prior assignment and starter code. So again nothing strictly wrong with that, but also again this represents minimal value add for which it would be unfair to other groups if this got the same level of credit as the ones that wrote a lot of new code specifically for this app (–2) | 5/7 |
| • Input views and controls | Input views and controls appear to be chosen and implemented appropriately | 7/7 |
| • Animations/transitions | Custom animation seen in loading view | 5/5 |
| • Programmed graphics | No custom programmed graphics seen (–5) | 0/5 |
| • Custom app icon | Custom app icon is custom | 3/3 |
| | **Other categories** | |
| Code maintainability | It turns out that `Brewery2` isn’t the only identifier with `2`s appended to the name—there are more, and some don’t even live in top-level scope so there’s no chance that they would clash with other identifiers if, say, there were file duplication problems that couldn’t be resolved quickly. This makes code much more error-prone and difficult to understand (–2) | -2 |
| Code readability | Some commented-out code lingers—commented-out code has temporary value while working on unfinalized things but in the end, they can be safely cleaned out without losing anything (thanks to version control), so that should have been done here. Keeping it around makes the code harder to read (–1) | -1 |
| Version control | Commit activity has sufficient frequency but not all messages are sufficiently descriptive; further, commits are predominantly Henry’s and based on the team role listings, this accurately reflects the amount of work done in proportion to everyone else—points will be assigned individually for equitability (–10) | -10 |
| Punctuality | First commit 4/19 5:16pm; last commit 5/6 5:01am. Punctuality accommodation granted due to assorted technical issues |  |
| | **Total** | **175/250** |
