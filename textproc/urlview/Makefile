# $OpenBSD: Makefile,v 1.29 2019/07/12 20:50:16 sthen Exp $

COMMENT=	curses-based URL ripper

DISTNAME=	urlview-0.9
REVISION=	8
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/contrib/ \
		ftp://ftp.gbnet.net/pub/mutt-international/contrib/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

CONFIGURE_STYLE= gnu

NO_TEST=	Yes

# see patch-url_handler_sh
RUN_DEPENDS=	devel/xdg-utils

FLAVORS=	slang
FLAVOR?=

# uses pledge()
.if ${FLAVOR:Mslang}
WANTLIB+=	slang curses m
LIB_DEPENDS=	devel/libslang
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}
CONFIGURE_ENV=	LIBS=-lcurses
.else
WANTLIB+=	curses
.endif

pre-build:
	${SUBST_CMD} ${WRKSRC}/{urlview.c,url_handler.sh}
	@sed -i "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/urlview.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/urlview
	${INSTALL_DATA} ${WRKSRC}/sample.urlview ${WRKSRC}/url_handler.sh \
	     ${PREFIX}/share/examples/urlview

.include <bsd.port.mk>
