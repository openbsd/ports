# $OpenBSD: Makefile,v 1.24 2019/07/12 20:50:18 sthen Exp $

# note, this isn't really maintained upstream any more
# see e2guardian.org for a maintained fork

COMMENT =	content scanning web filter
DISTNAME =	dansguardian-2.12.0.3
REVISION =	4
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net

HOMEPAGE =	http://www.dansguardian.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pcre pcreposix ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

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
