# $OpenBSD: Makefile,v 1.17 2007/09/15 20:59:41 merdely Exp $

COMMENT=	modules for parsing and evaluating XPath statements

MODULES=	cpan
DISTNAME=	XML-XPath-1.13
PKGNAME=	p5-${DISTNAME}p0
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
