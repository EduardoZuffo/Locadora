<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        
        $mailer = $this->get('mailer');
        
        $message = \Swift_Message::newInstance();
        $message->addFrom("eu@servidor.com")
                ->addTo("voce@servidor.com")
                ->setSubject("Oi voce!!!!")
                ->setBody("Aqui um texto ou html");
        
        $mailer->send($message);
        
        // replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.root_dir').'/..'),
        ]);
    }
    
    /**
     * @Route ("/produto/cadastrar")
     */
    public function cadastrarAction(Request $request)
    {
        //return $this->render("default/cadastrar.html.twig");
        
        $vetor = array(
            "nome" => "Edu",
            "idade" => 31
        );
        
        return new \Symfony\Component\HttpFoundation\JsonResponse($vetor);
    }
    
}
