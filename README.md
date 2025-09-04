[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Andrii Malakhovtsev

### Task 1: Hashing

* How many unique users are in the data?

  42
* How many salts did you create?

  42 for users, 84 for salt+user, 168 for salt+hash of (salt+user)
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)

  5 digit salts - 100,000. 42 users = 42 * 100,000 = 4,200,000
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?

  1303 lines * 100,000 (5 digit nonce) = 130,300,000
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

  Definitely prefere nonce for just more combinations for cracking.

This allows to count for unique users (I realized too late that by excel it was meant to do the steps manually)
```bash
awk -F',' 'NR>1 {print $1}' quiz_data.csv | sort | uniq | wc -l
```

---

### Task 2: Crypto Mining

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
00000e4dc34ae767ddb946ad6c043babf61e1a822d4bf2bbd44894f890d999fb  - 819nature
```

* How many words were in your dictionary?

  1000
* How many nonces did your code iterate over?

  Unique ones: 991 (10 to 1000)

  Per found 5 leading zeros combination: 810

  Repeating ones (found combination on word #989 and nonce 819 which is number #810): 991 nonces * 988 words + 810 nonces for the last word = 979,918
* What was the maximum number of hashes your code *could* compute given the above?

  If before finding the first 5 leading zeros: again 979,918

  If just all combinations: 991 nonces * 1000 words = 991,000
* What did you think about Task 2?

  It was pretty fun to try to brute froce into something, feels like hacking from movies.
* Is there a better way than brute force to attempt to get higher valued coins?

  Doesn't seem so.
* Why or why not?

  SHA-256 seems like one of the most up to date hashing algorithms, so no doubling and since it's even used for crytpocurrencies for securing transactions - if there was a way, they would already be cracked by now for the money.

