# $OpenBSD: Makefile,v 1.8 2009/04/18 14:42:41 sthen Exp $

COMMENT =	content scanning web filter
DISTNAME =	dansguardian-2.10.0.3
CATEGORIES =	www net

HOMEPAGE =	http://www.dansguardian.org/

MAINTAINER =	Bartosz Kuzma <bartosz.kuzma@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++ z

# This is deliberately not downloaded directly from the author's
# master site, since although it is GPL code, the author only
# grants commercial users permission to download it *once* from
# official sources. http://dansguardian.org/?page=copyright2
MASTER_SITES =		http://spacehopper.org/mirrors/

LIB_DEPENDS =		pcre.>=1,pcreposix.>=1::devel/pcre \
			execinfo::devel/libexecinfo

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--localstatedir=/var \
			--with-proxygroup=_dansguardian \
			--with-proxyuser=_dansguardian \
			--enable-segv-backtrace \
			--enable-clamd

FAKE_FLAGS +=		DGCONFDIR=${PREFIX}/share/examples/dansguardian \
			rel_group=_dansguardian rel_user=_dansguardian

.include <bsd.port.mk>
