# $OpenBSD: Makefile,v 1.21 2003/03/02 23:47:29 margarida Exp $

COMMENT=		"generate a cross-referenced HTML mail archive"

VERSION=		2.1.7
DISTNAME=		hypermail-${VERSION}
CATEGORIES=		mail www

HOMEPAGE=		http://www.hypermail.org/

MASTER_SITES=		${HOMEPAGE}dist/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/src/pcre
CONFIGURE_ARGS=		--with-htmldir=${PREFIX}/share/doc/hypermail

ALL_TARGET=		hypermail
COPTS=			-DHAVE_VFSCANF
MAKE_FLAGS=		WARNINGS=''
LDFLAGS=		-Lpcre

FLAVORS=		gdbm
FLAVOR?=

.if ${FLAVOR:L} == "gdbm"
CONFIGURE_ARGS+=--with-gdbm
LIB_DEPENDS=	gdbm.::databases/gdbm
.else
CONFIGURE_ARGS+=--without-gdbm
.endif

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/hypermail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hypermail
.for f in hr.yellow.gif hypermail.gif hypermail-faq.html customizing.html \
	hmrc.html hypermail.html customizing.html attachments.txt
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/hypermail
.endfor
	${INSTALL_MAN} ${WRKSRC}/docs/hypermail.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/docs/hmrc.4 ${PREFIX}/man/man5/hmrc.5

.include <bsd.port.mk>
