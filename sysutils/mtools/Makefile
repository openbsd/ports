COMMENT=	read/write/list/format DOS disks under Unix
DISTNAME=	mtools-4.0.48

CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/mtools/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c

SITES=		${SITE_GNU:=mtools/}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

FLAVORS=	no_x11
FLAVOR?=

FAKE_FLAGS=	INSTALL_PROGRAM="${INSTALL_PROGRAM}"

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS=		--with-x=no
.else
WANTLIB+=		X11 Xau
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mtools/
	${INSTALL_DATA} ${WRKSRC}/mtools.conf ${PREFIX}/share/examples/mtools/
	${INSTALL_MAN} ${WRKBUILD}/mtools.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/mtools.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
