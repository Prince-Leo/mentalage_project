const questions = [
  '想赶快变成老爷爷（老奶奶）',
  '在意服装、发型',
  '觉得有完结的人生才有意思',
  '人生至今遇过许多挫折',
  '一个人早上起不来',
  '只要有不称心的事马上就会生气',
  '喜欢起哄',
  '知道‘色即是空’的意思',
  '不知道最近年轻人流行什么',
  '用报纸打蟑螂是家常便饭',
  '比起都市，觉得住乡下比较符合自己的个性',
  '能读书，可是不想读',
  '不能想困难的事',
  '常浪费',
  '经常给自己加油',
  '比起同年的朋友，和年长的朋友较合得来',
  '人生计划已很完美',
  '偶尔会被人说有中年人的味道',
  '常被人耍',
  '旅行或什么大事的前一晚会睡不着',
  '会突然唱起歌来',
  '很能忍耐',
  '常会什么都不想就行动',
  '会把一天当很多天用',
  '情感波动激烈',
  '有‘这是我的底线，绝对不能让步’的想法',
  '没办法一个人住',
  '常哭',
  '有梦想',
  '比起旅行，比较喜欢待在家里',
]

const options = [
  { label: 'A', text: '不是', val: 1 },
  { label: 'B', text: '不确定', val: 2 },
  { label: 'C', text: '是', val: 3 },
]

const fastapiUrl = 'http://127.0.0.1:8000/'
fetch(fastapiUrl)
  .then((response) => response.json())
  .then((data) => {
    const message = document.getElementById('message')
    message.textContent = data.messages
  })
  .catch(() => {
    message.textContent = 'Error'
  })
