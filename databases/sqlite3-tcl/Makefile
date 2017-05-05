# $OpenBSD: Makefile,v 1.2 2017/05/05 04:23:38 stu Exp $

COMMENT=	Tcl bindings for sqlite3 (embedded SQL implementation)

DISTNAME=	sqlite-autoconf-3170000
PKGNAME=	sqlite3-tcl-3.17.0

WRKSRC=		${WRKDIST}/tea

CATEGORIES=	databases

HOMEPAGE=	http://www.sqlite.org/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

MASTER_SITES=	${HOMEPAGE}2017/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

MODULES+=	lang/tcl
BUILD_DEPENDS=  ${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS=     PKG_DIR=sqlite3

CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}

# for mozilla
CFLAGS+=	-DSQLITE_ENABLE_UNLOCK_NOTIFY

NO_TEST=	Yes

.include <bsd.port.mk>
