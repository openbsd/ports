# $OpenBSD: Makefile,v 1.34 2013/05/17 12:55:58 kirby Exp $

COMMENT=		generate a cross-referenced HTML mail archive

VERSION=		2.1.8
DISTNAME=		hypermail-${VERSION}
REVISION =		1
CATEGORIES=		mail www

HOMEPAGE=		http://www.hypermail-project.org/

MASTER_SITES=		http://www.linklevel.net/distfiles/

LIB_DEPENDS+=		devel/pcre

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pcre

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/src/pcre
CONFIGURE_ARGS=		--with-htmldir=${PREFIX}/share/doc/hypermail
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -DHAVE_VFSCANF" \
			INCLUDES="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

ALL_TARGET=		hypermail
MAKE_FLAGS=		WARNINGS=''
USE_GROFF =		Yes

FLAVORS=		gdbm
FLAVOR?=

.if ${FLAVOR} == "gdbm"
CONFIGURE_ARGS +=--with-gdbm=${LOCALBASE}
LIB_DEPENDS +=	databases/gdbm
WANTLIB +=	gdbm
.else
CONFIGURE_ARGS +=--without-gdbm
.endif

NO_TEST=		Yes

DOCS=	*.html *.png attachments.txt 

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/hypermail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hypermail
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/hypermail
.endfor
	${INSTALL_MAN} ${WRKSRC}/docs/hypermail.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/docs/hmrc.4 ${PREFIX}/man/man5/hmrc.5

.include <bsd.port.mk>
