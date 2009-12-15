# $OpenBSD: Makefile,v 1.47 2009/12/15 08:17:16 jasper Exp $
# $FreeBSD: Makefile,v 1.10 1998/03/28 14:36:34 steve Exp $

COMMENT=		X11/Motif GUI text editor

DISTNAME=		nedit-5.5
PKGNAME=		${DISTNAME}p8
DISTFILES=		${DISTNAME}-src${EXTRACT_SUFX} \
			diff.pats.gz:1 \
			mipsasm.pats.gz:1 \
			postgresql.pats.gz:1 \
			ruby.pats.gz:1
PATCHFILES=		wrapmark.diff:0
CATEGORIES=		editors x11

MASTER_SITES=		http://www.nedit.org/ftp/v5_5/ \
			${MASTER_SITE_SOURCEFORGE:=nedit/}

MASTER_SITES0=		http://www.bsdfrog.org/OpenBSD/distfiles/
MASTER_SITES1=		http://www.phil.uu.nl/~lievisse/distfiles/

HOMEPAGE=		http://www.nedit.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xmu Xp Xpm Xrender Xt
WANTLIB += c expat fontconfig freetype m z

MODULES=		converters/libiconv

USE_X11=		Yes
USE_MOTIF=		Any
ALL_TARGET=		openbsd

NO_REGRESS=		Yes

FLAVOR?=

CFLAGS+=	-DBUILD_UNTESTED_NEDIT

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
EXTRA_CFLAGS=	-O0
.endif

MAKE_FLAGS+=	EXTRA_CFLAGS=${EXTRA_CFLAGS}

PATTERNS=	diff mipsasm postgresql ruby

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nedit ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/source/nc ${PREFIX}/bin/ncl
	${INSTALL_MAN} ${WRKSRC}/doc/nedit.man ${PREFIX}/man/man1/nedit.1
	${INSTALL_MAN} ${WRKSRC}/doc/nc.man ${PREFIX}/man/man1/ncl.1
	${INSTALL_DATA} ${WRKSRC}/doc/NEdit.ad \
		${PREFIX}/lib/X11/app-defaults/NEdit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nedit
	${INSTALL_DATA} ${WRKSRC}/doc/nedit.doc ${PREFIX}/share/doc/nedit
	${INSTALL_DATA_DIR} ${PREFIX}/share/nedit/patterns
.for p in ${PATTERNS}
	${INSTALL_DATA} ${WRKDIR}/$p.pats ${PREFIX}/share/nedit/patterns/
.endfor

.include <bsd.port.mk>
