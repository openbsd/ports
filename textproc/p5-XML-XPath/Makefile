# $OpenBSD: Makefile,v 1.18 2010/07/13 20:14:23 sthen Exp $

COMMENT=	modules for parsing and evaluating XPath statements

MODULES=	cpan
DISTNAME=	XML-XPath-1.13
REVISION=	0
CATEGORIES=	textproc

RUN_DEPENDS=	:p5-XML-Parser->=2.23:textproc/p5-XML-Parser

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DOCDIR=	${PREFIX}/share/examples/p5-XML-XPath
SRCDOCDIR= ${WRKSRC}/examples

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_SCRIPT} ${SRCDOCDIR}/xpath ${DOCDIR}/
	${INSTALL_DATA} ${SRCDOCDIR}/*.xml ${DOCDIR}/

.include <bsd.port.mk>
