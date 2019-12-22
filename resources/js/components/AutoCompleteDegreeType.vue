<template>
    <div class="form-group">
        <select name="degreeType" id="degreeType" class="form-control">
            <option value="">اختر المؤهل...</option>
            <option value="دبلوم عالي">دبلوم عالي</option>
            <option value="بكالوريوس">بكالوريوس</option>
            <option value="ماجستير">ماجستير</option>
            <option value="دكتوراة">دكتوراة</option>
            <option value="اللغة الانجليزية">اللغة الانجليزية</option>
        </select>
    </div>
</template>

<script>
    export default {
        name:'autoCompleteDegreeType'
    }
</script>

<style scoped>
    .form-control {
        width: 200px;
    }
</style>