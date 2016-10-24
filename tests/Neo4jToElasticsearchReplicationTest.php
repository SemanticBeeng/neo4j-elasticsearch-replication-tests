<?php

namespace GraphAware\Elasticsearch\Tests;

use GraphAware\Common\Result\Result;
use GraphAware\Neo4j\Client\ClientBuilder;

class Neo4jToElasticsearchReplicationTest extends \PHPUnit_Framework_TestCase
{
    /**
     *
     */
    public function testConnection()
    {
        $client = ClientBuilder::create()
            ->addConnection('default', 'http://localhost:7474')
            ->build();

        $result = $client->run('MATCH (n) RETURN count(n)');
        $this->assertInstanceOf(Result::class, $result);
    }
}