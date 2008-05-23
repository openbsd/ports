# $OpenBSD: Makefile,v 1.7 2008/05/23 14:32:08 sthen Exp $

COMMENT=	true web content filtering for all
DISTNAME=	dansguardian-2.9.8.5
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www net

HOMEPAGE=	http://www.dansguardian.org/

MAINTAINER=	Bartosz Kuzma <bartosz.kuzma@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ z

# This is deliberately not downloaded directly from the author's
# master site, since although it is GPL code, the author only
# grants commercial users permission to download it *once* from
# official sources. http://dansguardian.org/?page=copyright2
MASTER_SITES=		http://www.bsdfrog.org/OpenBSD/distfiles/

LIB_DEPENDS=		pcre.>=1,pcreposix.>=1::devel/pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--localstatedir=/var \
		--with-proxygroup=_dansguardian \
		--with-proxyuser=_dansguardian

FLAVORS=clamav
FLAVOR?=

.if ${FLAVOR:L:Mclamav}
WANTLIB+=	bz2 gmp iconv pthread
LIB_DEPENDS+=	clamav.>=1::security/clamav
CONFIGURE_ARGS+=--enable-clamav
.endif

FAKE_FLAGS+=	sysconfdir=${PREFIX}/share/examples \
		rel_group=_dansguardian rel_user=_dansguardian

.include <bsd.port.mk>
