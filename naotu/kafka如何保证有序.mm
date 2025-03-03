<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
    <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="kafka如何保证有序" >
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="Producer" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="主线程" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="创建消息" POSITION="right">
    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="拦截器" POSITION="right">
    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="序列化器" POSITION="right">
    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="分区器" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="默认配置" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="消息键值为 null" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="使用轮询（Round Robin）算法决定分区归属" POSITION="right">
    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="消息键值不为空" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="对键进行散列（Hash）的方式来决定分区归属。" POSITION="right">
    </node>

    </node>

    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="消息累加器" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="作用：批量累积消息 " POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="将多个小消息合并成一个更大的批次（Batch）" POSITION="right">
    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="目的：从而减少网络请求次数，提高吞吐量。" POSITION="right">
    </node>

    </node>

    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="sender线程" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="发送消息至kafka broker" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="1. 从消息累加器读取消息" POSITION="right">
    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="2. 封装request对象" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="打包发送消息的载体" POSITION="right">
    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="3. 缓存至InFlightRequests" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="作用：存放的是已经发出去、但还没有收到响应的Request对象，默认值为5" POSITION="right">
    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="限制条件：一旦超出这个阈值，Producer就不会再往这个Broker节点发送请求了。" POSITION="right">
    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="目的：防止消息发送密集而导致Broker节点的负载过高。" POSITION="right">
    </node>

    </node>

    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="参数" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="max.in.flight.requests.per.connection" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="该参数作用于InFlightRequests缓存区域，用来设置Producer在收到Broker响应之前，可以发送几个批次的消息，默认值为5。" POSITION="right">
    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="retries" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="设置当Producer发送消息失败时，可以进行重试的次数，默认值为0，也就是不进行重试。" POSITION="right">
    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="【特别注意】" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="为保证发送消息有序，生产者端的max.in.flight.requests.per.connection和retries这两个参数必须得有一个等于0" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="原因： 如果我们将retries参数值设置为1，在max.in.flight.requests.per.connection的参数值大于1的情况下，Request1批次的消息发送失败，Request2批次的消息发送成功，此时Request1批次的消息进行重试发送也成功了，那两者的顺序就反过来了。" POSITION="right">
    </node>

    </node>

    </node>

    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="Consumer" POSITION="left">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="参数" POSITION="left">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="max.poll.records" POSITION="left">
    </node>

    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="有序性" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="业务有序性" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="保证某一个订单（设备等）的所有操作有序。" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="key使用同一个， 消息默认发送到同一个分区" POSITION="right">
    </node>

    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="全局有序性" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="所有的消息都有序" POSITION="right">
            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="只建一个分区" POSITION="right">
    </node>

    </node>

    </node>

            <node CREATED="1741008459978" ID="ID_db949be79a5404ed2feab536d8b1ba49" MODIFIED="1741008459978" TEXT="单线程消费" POSITION="right">
    </node>

    </node>

    </node>

</map>
