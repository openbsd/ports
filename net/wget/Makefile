# $OpenBSD: Makefile,v 1.26 2000/12/25 06:03:14 brad Exp $

DISTNAME=	wget-1.5.3
CATEGORIES=	net
NEED_VERSION=	1.324
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
MASTER_SITE_SUBDIR= wget

PATCHFILES=	wget-153-v6-20001225.diff.gz:0
PATCH_DIST_STRIP= -p1

HOMEPAGE=	http://www.gnu.org/software/wget/

LIB_DEPENDS=	intl.1::devel/gettext

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--enable-ipv6
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# Less broken way to force Rebuild...
post-patch:
	@echo '.PHONY: $${SUBDIRS}' >> ${WRKBUILD}/Makefile.in

.include <bsd.port.mk>
