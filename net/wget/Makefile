# $OpenBSD: Makefile,v 1.27 2001/01/11 14:45:34 brad Exp $

DISTNAME=	wget-1.6
CATEGORIES=	net
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
MASTER_SITE_SUBDIR= wget

PATCHFILES=	wget-16-v6-20010111a.diff.gz:0
PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://www.gnu.org/software/wget/

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-ipv6
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# less broken way to force rebuild...
post-patch:
	@echo '.PHONY: $${SUBDIRS}' >> ${WRKBUILD}/Makefile.in
	@cd ${WRKSRC}; touch configure configure.in aclocal.m4

.include <bsd.port.mk>
