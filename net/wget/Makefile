# $OpenBSD: Makefile,v 1.17 2000/04/06 22:51:48 espie Exp $

DISTNAME=	wget-1.5.3
CATEGORIES=	net
NEED_VERSION=	1.230
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= wget

LIB_DEPENDS=	intl::devel/gettext

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes


# Less broken way to force Rebuild...
post-patch:
	@echo '.PHONY: $${SUBDIRS}' >>${WRKBUILD}/Makefile.in

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+=--disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
