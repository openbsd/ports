# $OpenBSD: Makefile,v 1.60 2019/07/12 20:49:38 sthen Exp $

COMMENT=	extended C-shell with many useful features

DISTNAME=	tcsh-6.20.00
REVISION=	1
CATEGORIES=	shells
HOMEPAGE=	http://www.tcsh.org/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/tcsh/ \
		ftp://ftp.astron.com/pub/tcsh/old/

WANTLIB=	c curses

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV=	LDFLAGS="${STATIC}"
.endif

CONFIGURE_STYLE=gnu

AUTOCONF_VERSION=2.59
TEST_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
TEST_FLAGS=	AUTOCONF_VERSION=${AUTOCONF_VERSION}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcsh ${PREFIX}/bin/tcsh
	${INSTALL_MAN} ${WRKSRC}/tcsh.man ${PREFIX}/man/man1/tcsh.1
.for S D in \
	C	C		 \
	et	et_EE.ISO-8859-1 \
	finnish	fi_FI.ISO_8859-1 \
	french	fr_BE.ISO_8859-1 \
	french	fr_CA.ISO_8859-1 \
	french	fr_CH.ISO_8859-1 \
	french	fr_FR.ISO_8859-1 \
	german	de_AT.ISO_8859-1 \
	german	de_CH.ISO_8859-1 \
	german	de_DE.ISO_8859-1 \
	greek	el_GR.ISO_8859-7 \
	italian	it_CH.ISO_8859-1 \
	italian it_IT.ISO_8859-1 \
	ja	ja_JP.EUC	 \
	pl	pl_PL.ISO_8859-2 \
	russian	ru_RU.KOI8-R	 \
	spanish	es_ES.ISO_8859-1 \
	ukrainian uk_UA.KOI8-U
	${INSTALL_DATA} ${WRKSRC}/nls/$S.cat ${PREFIX}/share/nls/$D/tcsh.cat
.endfor

.include <bsd.port.mk>
