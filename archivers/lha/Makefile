# $OpenBSD: Makefile,v 1.17 2002/02/04 19:53:52 angelos Exp $
## updated to lha-1.14i supporting -lh7- algorithm
## -- yozo.  Sun Jan 13 14:36:49 JST 2002

COMMENT=	"archive files using LZW compression (.LZH files)"

DISTNAME=	lha-114i
PKGNAME=	lha-1.14i
NEED_VERSION=	1.504
CATEGORIES=	archivers
MASTER_SITES=	http://www2m.biglobe.ne.jp/~dolphin/lha/prog/ \
		ftp://ftp.win.ne.jp/pub/misc/
HOMEPAGE=       http://www2m.biglobe.ne.jp/~dolphin/lha/lha.htm

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	BINDIR='$${PREFIX}/bin' MANDIR='$${PREFIX}/man/ja_JP.EUC' \
		MANSECT="1" INSTALL="" INSTALLBIN="${INSTALL_PROGRAM}" \
		INSTALLMAN="${INSTALL_MAN}"

MANLANG=	ja_JP.EUC
NO_REGRESS=	Yes

DOCS= CHANGES.euc MACHINES.euc MACHINES2.euc PROBLEMS.euc README.euc \
      change-114e.txt change-114g.txt change-114h.txt change-114i.txt \
      config.eng config.jpn.euc header.doc.euc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lha
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/lha

.include <bsd.port.mk>
