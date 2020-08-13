# $OpenBSD: Makefile,v 1.56 2020/08/13 18:22:58 sthen Exp $

COMMENT=	tty-based e-mail client, Mutt with patches

GH_ACCOUNT=	neomutt
GH_PROJECT=	neomutt
GH_TAGNAME=	20200626
REVISION=	1

CATEGORIES=	mail
HOMEPAGE=	https://neomutt.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	c crypto curses iconv idn2 intl ssl tdb z

LIB_DEPENDS+=	databases/tdb \
		devel/gettext,-runtime \
		devel/libidn2
BUILD_DEPENDS+=	devel/gettext,-tools \
		lang/jimtcl \
		textproc/docbook-xsl \
		w3m-*|lynx-*:www/lynx
DEBUG_PACKAGES=	${BUILD_PACKAGES}

SEPARATE_BUILD=	Yes
FLAVORS=	gpgme sasl notmuch
FLAVOR?=

CONFIGURE_STYLE= simple
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

.if ${FLAVOR:Mnotmuch}
CONFIGURE_ARGS+= --notmuch
LIB_DEPENDS+=	mail/notmuch/notmuch,-main
WANTLIB+=	notmuch
.endif

post-install:
	@mv -f ${PREFIX}/share/doc/neomutt/samples/* ${PREFIX}/share/examples/neomutt
	@sed -i -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		-e "s,/usr/libexec/neomutt,${TRUEPREFIX}/libexec/neomutt," \
		${PREFIX}/share/examples/neomutt/gpg.rc

.include <bsd.port.mk>
