incoming_file_names = ["cjs_judge.ul", "login.txt", "sbstnc_tst", "vine", "vine_case.ul", "vine_charge.ul", "vine_court_event.ul", "vine_delete.ul"]
# expect "vine" and "sbstnc_tst" to both be empty dirs

archive_file_names = [
  "cjs_judge.ul.20160201",
  "cjs_judge.ul.20160202",
  "cjs_judge.ul.20160203",
  "cjs_judge.ul.20160204",
  "cjs_judge.ul.20160205",
  "cjs_judge.ul.20160206",
  "cjs_judge.ul.20160207",
  "cjs_judge.ul.20160208",
  "cjs_judge.ul.20160209",
  "cjs_judge.ul.20160210",
  "cjs_judge.ul.20160211",
  "cjs_judge.ul.20160212",
  "cjs_judge.ul.20160213",
  "cjs_judge.ul.20160214",
  "cjs_judge.ul.20160215",
  "cjs_judge.ul.20160216",
  "cjs_judge.ul.20160217",
  "cjs_judge.ul.20160218",
  "cjs_judge.ul.20160219",
  "cjs_judge.ul.20160220",
  "cjs_judge.ul.20160221",
  "cjs_judge.ul.20160222",
  "cjs_judge.ul.20160223",
  "cjs_judge.ul.20160224",
  "cjs_judge.ul.20160225",
  "cjs_judge.ul.20160226",
  "cjs_judge.ul.20160227",
  "cjs_judge.ul.20160228",
  "cjs_judge.ul.20160229",
  "cjs_judge.ul.20160301",
  "vine_case.ul.20160201",
  "vine_case.ul.20160202",
  "vine_case.ul.20160203",
  "vine_case.ul.20160204",
  "vine_case.ul.20160205",
  "vine_case.ul.20160206",
  "vine_case.ul.20160207",
  "vine_case.ul.20160208",
  "vine_case.ul.20160209",
  "vine_case.ul.20160210",
  "vine_case.ul.20160211",
  "vine_case.ul.20160212",
  "vine_case.ul.20160213",
  "vine_case.ul.20160214",
  "vine_case.ul.20160215",
  "vine_case.ul.20160216",
  "vine_case.ul.20160217",
  "vine_case.ul.20160218",
  "vine_case.ul.20160219",
  "vine_case.ul.20160220",
  "vine_case.ul.20160221",
  "vine_case.ul.20160222",
  "vine_case.ul.20160223",
  "vine_case.ul.20160224",
  "vine_case.ul.20160225",
  "vine_case.ul.20160226",
  "vine_case.ul.20160227",
  "vine_case.ul.20160228",
  "vine_case.ul.20160229",
  "vine_case.ul.20160301",
  "vine_charge.ul.20160201",
  "vine_charge.ul.20160202",
  "vine_charge.ul.20160203",
  "vine_charge.ul.20160204",
  "vine_charge.ul.20160205",
  "vine_charge.ul.20160206",
  "vine_charge.ul.20160207",
  "vine_charge.ul.20160208",
  "vine_charge.ul.20160209",
  "vine_charge.ul.20160210",
  "vine_charge.ul.20160211",
  "vine_charge.ul.20160212",
  "vine_charge.ul.20160213",
  "vine_charge.ul.20160214",
  "vine_charge.ul.20160215",
  "vine_charge.ul.20160216",
  "vine_charge.ul.20160217",
  "vine_charge.ul.20160218",
  "vine_charge.ul.20160219",
  "vine_charge.ul.20160220",
  "vine_charge.ul.20160221",
  "vine_charge.ul.20160222",
  "vine_charge.ul.20160223",
  "vine_charge.ul.20160224",
  "vine_charge.ul.20160225",
  "vine_charge.ul.20160226",
  "vine_charge.ul.20160227",
  "vine_charge.ul.20160228",
  "vine_charge.ul.20160229",
  "vine_charge.ul.20160301",
  "vine_court_event.ul.20160201",
  "vine_court_event.ul.20160202",
  "vine_court_event.ul.20160203",
  "vine_court_event.ul.20160204",
  "vine_court_event.ul.20160205",
  "vine_court_event.ul.20160206",
  "vine_court_event.ul.20160207",
  "vine_court_event.ul.20160208",
  "vine_court_event.ul.20160209",
  "vine_court_event.ul.20160210",
  "vine_court_event.ul.20160211",
  "vine_court_event.ul.20160212",
  "vine_court_event.ul.20160213",
  "vine_court_event.ul.20160214",
  "vine_court_event.ul.20160215",
  "vine_court_event.ul.20160216",
  "vine_court_event.ul.20160217",
  "vine_court_event.ul.20160218",
  "vine_court_event.ul.20160219",
  "vine_court_event.ul.20160220",
  "vine_court_event.ul.20160221",
  "vine_court_event.ul.20160222",
  "vine_court_event.ul.20160223",
  "vine_court_event.ul.20160224",
  "vine_court_event.ul.20160225",
  "vine_court_event.ul.20160226",
  "vine_court_event.ul.20160227",
  "vine_court_event.ul.20160228",
  "vine_court_event.ul.20160229",
  "vine_court_event.ul.20160301",
  "vine_delete.ul.20160201",
  "vine_delete.ul.20160202",
  "vine_delete.ul.20160203",
  "vine_delete.ul.20160204",
  "vine_delete.ul.20160205",
  "vine_delete.ul.20160206",
  "vine_delete.ul.20160207",
  "vine_delete.ul.20160208",
  "vine_delete.ul.20160209",
  "vine_delete.ul.20160210",
  "vine_delete.ul.20160211",
  "vine_delete.ul.20160212",
  "vine_delete.ul.20160213",
  "vine_delete.ul.20160214",
  "vine_delete.ul.20160215",
  "vine_delete.ul.20160216",
  "vine_delete.ul.20160217",
  "vine_delete.ul.20160218",
  "vine_delete.ul.20160219",
  "vine_delete.ul.20160220",
  "vine_delete.ul.20160221",
  "vine_delete.ul.20160222",
  "vine_delete.ul.20160223",
  "vine_delete.ul.20160224",
  "vine_delete.ul.20160225",
  "vine_delete.ul.20160226",
  "vine_delete.ul.20160227",
  "vine_delete.ul.20160228",
  "vine_delete.ul.20160229",
  "vine_delete.ul.20160301"
]
