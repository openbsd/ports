# $OpenBSD: Makefile,v 1.1.1.1 2009/07/29 12:55:56 jasper Exp $

COMMENT=		Version Control with Subversion

V=			1.5
DISTNAME=		svn-book-html-chunk
PKGNAME=		svnbook-$V
CATEGORIES=		books devel

HOMEPAGE=		http://svnbook.red-bean.com/

# Creative Commons Attribution License
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/en/$V/
EXTRACT_SUFX=		.tar.bz2

EXTRACT_ONLY=	
NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

DOCDIR=			${PREFIX}/share/doc

do-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && \
		tar -s/svn-book-html-chunk/svnbook/g -zjxf \
		${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

.include <bsd.port.mk>
