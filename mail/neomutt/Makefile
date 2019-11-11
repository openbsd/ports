# $OpenBSD: Makefile,v 1.42 2019/11/11 21:42:00 sthen Exp $

COMMENT=	tty-based e-mail client, Mutt with patches

GH_ACCOUNT=	neomutt
GH_PROJECT=	neomutt
GH_TAGNAME=	20191111

CATEGORIES=	mail
HOMEPAGE=	https://neomutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	c crypto curses iconv idn2 intl ssl z

LIB_DEPENDS+=	devel/gettext,-runtime \
		devel/libidn2
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx

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
		--ssl

CONFIGURE_ENV=	autosetup_tclsh="${LOCALBASE}/bin/jimsh" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/neomutt"

DEBUG+=		-g

.if ${FLAVOR:Mgpgme}
CONFIGURE_ARGS+= --gpgme
LIB_DEPENDS+=	security/gpgme
WANTLIB+=	assuan gpg-error gpgme
.endif

.if ${FLAVOR:Msasl}
CONFIGURE_ARGS+= --sasl
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
.endif

.include <bsd.port.arch.mk>

.if ${MACHINE_ARCH} == hppa || ${MACHINE_ARCH} == powerpc
LIB_DEPENDS+=	databases/qdbm
WANTLIB+=	qdbm
CONFIGURE_ARGS+= --qdbm
.else
LIB_DEPENDS+=	databases/kyotocabinet
WANTLIB+=	kyotocabinet
CONFIGURE_ARGS+= --kyotocabinet
.endif

post-install:
	@mv -f ${PREFIX}/share/doc/neomutt/samples/* ${PREFIX}/share/examples/neomutt
	@sed -i -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		-e "s,/usr/libexec/neomutt,${TRUEPREFIX}/libexec/neomutt," \
		${PREFIX}/share/examples/neomutt/gpg.rc

.include <bsd.port.mk>
