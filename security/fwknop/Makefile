# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:02 sthen Exp $

COMMENT =	firewall knock operator

DISTNAME =	fwknop-2.6.10
REVISION =	0

SHARED_LIBS +=	fko	0.0 # 3.0

CATEGORIES =	security

HOMEPAGE =	https://www.cipherdyne.org/fwknop/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += assuan c gpg-error gpgme iconv intl pcap

MASTER_SITES =		https://www.cipherdyne.org/fwknop/download/

BUILD_DEPENDS =		net/wget \
			security/gnupg
RUN_DEPENDS =		net/wget \
			security/gnupg
LIB_DEPENDS =		devel/gettext,-runtime \
			security/gpgme

SEPARATE_BUILD =	Yes

# undefined reference to `fko_new'
USE_LIBTOOL =		gnu
LIBTOOL_FLAGS =		--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-static

post-install:
	mv ${WRKINST}${SYSCONFDIR}/fwknop ${PREFIX}/share/examples/
	rm ${PREFIX}/lib/libfko.la

.include <bsd.port.mk>
