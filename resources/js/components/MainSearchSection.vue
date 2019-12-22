<template>
    <div>
        <form action="/search" method="GET">
			<div class="container">
						<div id="custom-search-input">
							
								<autocomplete-country placeholder="الدولة التي تريد الدراسة فيها">

								</autocomplete-country>
							
							<div class="form-group">
								<select v-model="chosenIndex" name="ChosenIndex" class="form-control search1">
								<option value="" disabled >اختر نوع بحث</option>
								<option value="Unversity">جامعات</option>
								<option value="Scholarship">منح دراسية</option>
								<option value="Institute">معاهد</option>
								</select>
							</div>
							<div class="row">
								<div class="col-lg-6 col-md-4">

									<span v-if="chosenIndex == 'Unversity'">
											<autocomplete-unversity 
										placeholder="اسم الجامعة"
										></autocomplete-unversity>
									</span>
									<span v-else-if="chosenIndex == 'Scholarship'">
											<autocomplete-scholarship 
										placeholder="اسم المنح"
										></autocomplete-scholarship>
									</span>
									
									<span v-else-if="chosenIndex == 'Institute'">
											<autocomplete-institute 
										placeholder="اسم المعهد"
										></autocomplete-institute>
									</span>
									<span v-else>
											<autocomplete-unversity 
										placeholder="اختر نوع البحث"
										></autocomplete-unversity>

									</span>
								</div>
								<div class="col-lg-6 col-md-4"> 
									<autocomplete-major 
										placeholder="التخصص"
									></autocomplete-major>
								</div>
							</div>
							<div>
								<br>
									<button type="submit" class="btn btn-primary btn-lg btn-block">البحث عن الجامعة</button>
							</div>
						</div>
					</div>
				</form>
    </div>
</template>

<script>

export default {
	data() {
		return {
			chosenIndex:'',
	}
	}
}
</script>

<style scoped>
	.btn {
		cursor: pointer;
	}
</style>


