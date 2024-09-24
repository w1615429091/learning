// 获取小恐龙和仙人掌元素
const dinosaur = document.getElementById('dinosaur');
const cactus = document.getElementById('cactus');

// 给文档添加键盘按下事件监听
document.addEventListener('keydown', function(event) {
    // 判断按下的是否是空格键
    if (event.code === 'Space') {
        jump();
    }
});

// 跳跃函数
function jump() {
    // 检查小恐龙是否已经在空中
    if (!dinosaur.classList.contains('jump')) {
        dinosaur.classList.add('jump');

        // 设置跳跃结束后移除class
        setTimeout(function() {
            dinosaur.classList.remove('jump');
        }, 300);
    }
}

// 监测碰撞
function checkCollision() {
    const dinosaurRect = dinosaur.getBoundingClientRect();
    const cactusRect = cactus.getBoundingClientRect();

    // 检测碰撞
    if (
        dinosaurRect.x < cactusRect.x + cactusRect.width &&
        dinosaurRect.x + dinosaurRect.width > cactusRect.x &&
        dinosaurRect.y < cactusRect.y + cactusRect.height &&
        dinosaurRect.height + dinosaurRect.y > cactusRect.y
    ) {
        console.log('游戏结束');
    }
}

// 定时检查碰撞
setInterval(checkCollision, 150);
