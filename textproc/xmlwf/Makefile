# $OpenBSD: Makefile,v 1.2 2010/10/19 07:54:26 espie Exp $

COMMENT=	verifies XML documents
V=		2.0.1

PKGNAME=	xmlwf-$V
DISTNAME=	expat-$V

CATEGORIES=	textproc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=expat/}

HOMEPAGE=	http://expat.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKSRC=			${WRKDIR}/expat-$V/xmlwf
WANTLIB=		c expat
USE_GROFF =	Yes
NO_REGRESS=		Yes

do-configure:		
	ln -s ${FILESDIR}/Makefile ${WRKSRC}/Makefile

post-install:
	${INSTALL_MAN}	${WRKSRC}/../doc/xmlwf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
