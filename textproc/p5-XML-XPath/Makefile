# $OpenBSD: Makefile,v 1.15 2004/06/26 07:35:10 xsa Exp $

COMMENT=	"modules for parsing and evaluating XPath statements"

DISTNAME=	XML-XPath-1.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

RUN_DEPENDS=	:p5-XML-Parser->=2.23:textproc/p5-XML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

DOCDIR=	${PREFIX}/share/examples/p5-XML-XPath
SRCDOCDIR= ${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_SCRIPT} ${SRCDOCDIR}/xpath ${DOCDIR}/
	${INSTALL_DATA} ${SRCDOCDIR}/*.xml ${DOCDIR}/

.include <bsd.port.mk>
