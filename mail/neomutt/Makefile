# $OpenBSD: Makefile,v 1.54 2020/06/26 13:39:31 sthen Exp $

COMMENT=	tty-based e-mail client, Mutt with patches

GH_ACCOUNT=	neomutt
GH_PROJECT=	neomutt
GH_TAGNAME=	20200626

CATEGORIES=	mail
HOMEPAGE=	https://neomutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	c crypto curses iconv idn2 intl ssl tdb z

LIB_DEPENDS+=	databases/tdb \
		devel/gettext,-runtime \
		devel/libidn2
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx
DEBUG_PACKAGES=	${BUILD_PACKAGES}

SEPARATE_BUILD=	Yes
FLAVORS=	gpgme sasl
FLAVOR?=

CONFIGURE_STYLE= simple
BUILD_DEPENDS+=	lang/jimtcl \
		devel/gettext,-tools
CONFIGURE_ARGS+= --mandir="${PREFIX}/man" \
		--with-ui=ncurses \
		--docdir="${PREFIX}/share/doc/neomutt" \
		--with-lock=flock \
		--idn=0 \
		--idn2 \
		--fmemopen \
		--ssl \
		--tdb \
		--debug

CONFIGURE_ENV=	autosetup_tclsh="${LOCALBASE}/bin/jimsh" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/neomutt"

.if ${FLAVOR:Mgpgme}
CONFIGURE_ARGS+= --autocrypt \
		--gpgme \
		--sqlite
LIB_DEPENDS+=	databases/sqlite3 \
		security/gpgme
WANTLIB+=	assuan gpg-error gpgme sqlite3
.endif

.if ${FLAVOR:Msasl}
CONFIGURE_ARGS+= --sasl
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
.endif

post-install:
	@mv -f ${PREFIX}/share/doc/neomutt/samples/* ${PREFIX}/share/examples/neomutt
	@sed -i -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		-e "s,/usr/libexec/neomutt,${TRUEPREFIX}/libexec/neomutt," \
		${PREFIX}/share/examples/neomutt/gpg.rc

.include <bsd.port.mk>
