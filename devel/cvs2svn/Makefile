# $OpenBSD: Makefile,v 1.2 2009/09/04 20:54:11 stsp Exp $

COMMENT=		migrate repositories from CVS to Subversion/GIT

# Beware! Upgrades need a new directory in MASTER_SITES,
# otherwise you probably get the old files, not 404.
MODPY_EGG_VERSION=	2.2.0
DISTNAME=		cvs2svn-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME}p0
MASTER_SITES=		${HOMEPAGE}files/documents/1462/44372/

CATEGORIES=		devel

HOMEPAGE=		http://cvs2svn.tigris.org/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

RUN_DEPENDS=	:py-subversion-*:devel/subversion,-python \
		${MODPY_RUN_DEPENDS:S/python/python-bsddb/},-bsddb

REGRESS_DEPENDS=${RUN_DEPENDS}

REGRESS_FLAGS=	PYTHON=${MODPY_BIN}

REGRESS_TARGET=	check

DOCFILES=	BUGS CHANGES COPYING HACKING README doc/design-notes.txt
DOCDIR=		${PREFIX}/share/doc/cvs2svn

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${DOCDIR}/www
.for i in ${DOCFILES}
	 ${INSTALL_DATA} ${WRKSRC}/$i ${DOCDIR}/
.endfor
	 ${INSTALL_DATA} ${WRKSRC}/www/*html ${DOCDIR}/www/

.include <bsd.port.mk>
