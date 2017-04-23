# $OpenBSD: Makefile,v 1.26 2017/04/23 09:18:21 yasuoka Exp $

COMMENT=	enhanced less with iso-2022-jp and UTF-8 encodings support

V=		382.262.03.b.01

GH_ACCOUNT=	hrs-allbsd
GH_PROJECT=	less
GH_TAGNAME=	v${V}

PKGNAME=	ja-less-${V}
CATEGORIES=	japanese
HOMEPAGE=	http://web.archive.org/web/20070220213232/http://www25.big.or.jp/~jam/less

MAINTAINER =	YASUOKA Masahiko <yasuoka@yasuoka.net>

#		BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses

CONFIGURE_STYLE=	gnu dest

DOCS=		README.iso README.iso.jp README.ext.jp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ja-less
.for _f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/ja-less
.endfor

.include <bsd.port.mk>
