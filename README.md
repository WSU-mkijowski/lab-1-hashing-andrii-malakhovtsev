[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name:

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?
* How many salts did you create?
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 1 here
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
819nature
```

* How many words were in your dictionary?
> 1000
* How many nonces did your code iterate over?
> Unique ones - 991, repeating ones - 980088
* What was the maximum number of hashes your code *could* compute given the above?
> If before finding the first 5 leading zeros - 980088, if just all combinations - 991000
* What did you think about Task 2?
> It was pretty fun to try to brute froce into something, feels like hacking from movies.
* Is there a better way than brute force to attempt to get higher valued coins?
> Doesn't seem so.
* Why or why not?
> SHA-256 seems like one of the most up to date hashing algorithms, so no doubling and since it's even used for crytpocurrencies for securing transactions. If there was a way, they would already be cracked by now for the money.


```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

