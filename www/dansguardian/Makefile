# $OpenBSD: Makefile,v 1.15 2013/03/11 11:44:41 espie Exp $

COMMENT =	content scanning web filter
DISTNAME =	dansguardian-2.12.0.3
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net

HOMEPAGE =	http://www.dansguardian.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pcre pcreposix stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dansguardian/}

LIB_DEPENDS =		devel/pcre

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--with-proxygroup=_dansguardian \
			--with-proxyuser=_dansguardian \
			--enable-segv-backtrace=no \
			--enable-clamd

FLAVORS =		debug
FLAVOR ?=
.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--with-dgdebug
.endif

FAKE_FLAGS +=		DGCONFDIR=${PREFIX}/share/examples/dansguardian \
			rel_group=_dansguardian rel_user=_dansguardian

.include <bsd.port.mk>
