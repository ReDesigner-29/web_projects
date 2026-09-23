<script>
let w = window.innerWidth;
    let h = window.innerHeight;
    window.addEventListener("load", function () {
        let h_10 = parseInt(h) / 10
        let h_25 = parseInt(h) / 25
        const element = document.getElementById("nav");

        document.getElementById("nav").style.height = parseInt(h_10) + "px";
        document.getElementById("nav").style.padding = parseInt(h_25) + "px";
        document.getElementById("barrier").style.height = parseInt(element.offsetHeight) + "px";
});
    </script>
</main>
</body>
</html>
<?php
mysqli_close($conn);