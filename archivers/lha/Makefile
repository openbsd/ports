# $OpenBSD: Makefile,v 1.22 2003/07/16 19:24:24 naddy Exp $

COMMENT=	"archive files using LZW compression (.lzh files)"

VERSION=	1.14i
DISTNAME=	lha-${VERSION:S/.//}
PKGNAME=	lha-${VERSION}
CATEGORIES=	archivers

HOMEPAGE=       http://www2m.biglobe.ne.jp/~dolphin/lha/lha.htm

MAINTAINER=	Yozo Toda <yozo@v007.vaio.ne.jp>

# Restrictive
PERMIT_PACKAGE_CDROM=	"requires advance notification"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"requires advance notification"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www2m.biglobe.ne.jp/~dolphin/lha/prog/ \
		ftp://ftp.win.ne.jp/pub/misc/

MAKE_FLAGS=	CC="${CC}" OPTIMIZE="${CFLAGS}" \
		MACHINE="-DSYSTIME_HAS_NO_TM -DSYSV_SYSTEM_DIR -DMKTIME \
			 -DUSESTRCASECMP" \
		SWITCHES="-DNEED_INCREMENTAL_INDICATOR -DEUC -DSUPPORT_LH7"

FAKE_FLAGS=	BINDIR="${WRKINST}${PREFIX}/bin" \
		MANDIR="${WRKINST}${PREFIX}/man/ja_JP.EUC" MANSECT="1" \
		INSTALL="" INSTALLBIN="${INSTALL_PROGRAM}" \
		INSTALLMAN="${INSTALL_MAN}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
