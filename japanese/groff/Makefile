# $OpenBSD: Makefile,v 1.9 2007/09/16 00:33:57 merdely Exp $

COMMENT=	japanese groff

CATEGORIES=	japanese textproc print

PKGNAME=	ja-groff-1.10_0.99
DISTNAME=	groff-1.10

PATCHFILES=	jgroff-0.99.diff.gz:0

MASTER_SITES=	${MASTER_SITE_GNU:=groff/}

MASTER_SITES0=	ftp://ftp.ae.keio.ac.jp/pub/GNU/ \
                ftp://ftp.tohoku.ac.jp/pub/GNU/japanese/


PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c stdc++ m

PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu old dest

#post-configure:
#	@cd ${WRKSRC}/xditview && ${SETENV} ${MAKE_ENV} ${XMKMF}
#
#post-build:
#	@cd ${WRKBUILD}/xditview && ${SETENV} ${MAKE_ENV} \
#	    make ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}
#
#post-install:
#	@cd ${WRKBUILD}/xditview && ${SETENV} ${MAKE_ENV} \
#	    make ${FAKE_FLAGS} -f ${MAKE_FILE} install install.man

MAINTAINER=	Marc Espie <espie@openbsd.org>

.include <bsd.port.mk>
