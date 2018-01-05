# $OpenBSD: Makefile,v 1.24 2018/01/05 13:56:02 sthen Exp $

COMMENT=	tty-based e-mail client, Mutt with patches

GH_ACCOUNT=	neomutt
GH_PROJECT=	neomutt
GH_TAGNAME=	neomutt-20171215
DISTNAME=	${GH_TAGNAME}

CATEGORIES=	mail
HOMEPAGE=	http://www.neomutt.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB+=	c crypto curses iconv idn intl ssl z

LIB_DEPENDS+=	devel/gettext \
		devel/libidn
BUILD_DEPENDS+=	textproc/docbook-xsl \
		www/lynx

FLAVORS=	gpgme sasl
FLAVOR?=

CONFIGURE_STYLE= simple
BUILD_DEPENDS+=	lang/jimtcl \
		devel/gettext-tools
CONFIGURE_ARGS+= --mandir="${PREFIX}/man" \
		--with-ui=ncurses \
		--docdir="${PREFIX}/share/doc/neomutt" \
		--flock \
		--disable-fcntl \
		--fmemopen \
		--ssl

CONFIGURE_ENV=	autosetup_tclsh="${LOCALBASE}/bin/jimsh" \
		CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SYSCONFDIR=	${BASESYSCONFDIR}/mutt
FAKE_FLAGS=	sysconfdir="${PREFIX}/share/examples/neomutt"

DEBUG+=		-g

.if ${FLAVOR:Mgpgme}
CONFIGURE_ARGS+= --gpgme
LIB_DEPENDS+=	security/gpgme
WANTLIB+=	gpgme
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
	@perl -pi -e "s,/usr/bin/gpg,${LOCALBASE}/bin/gpg," \
		${PREFIX}/share/examples/neomutt/gpg.rc

.include <bsd.port.mk>
