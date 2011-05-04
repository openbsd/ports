# $OpenBSD: Makefile,v 1.18 2011/05/04 14:00:13 gsoares Exp $

COMMENT=	curses-based URL ripper

DISTNAME=	urlview-0.9
REVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.fu-berlin.de/pub/unix/mail/mutt/contrib/ \
		ftp://ftp.mutt.org/mutt/contrib/ \
		ftp://ftp.gbnet.net/pub/mutt-international/contrib/ \
		ftp://ftp.gwdg.de/pub/unix/mail/mutt/international/contrib/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

CONFIGURE_STYLE= gnu

USE_GROFF =	Yes
NO_REGRESS=	Yes

FLAVORS=	slang
FLAVOR?=

.if ${FLAVOR:L:Mslang}
WANTLIB+=	slang curses m
LIB_DEPENDS=	devel/libslang
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}
CONFIGURE_ENV=	LIBS=-lcurses
.endif

pre-build:
	${SUBST_CMD} ${WRKSRC}/urlview.c
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" ${WRKSRC}/urlview.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/urlview
	${INSTALL_DATA} ${WRKSRC}/sample.urlview ${WRKSRC}/url_handler.sh \
	     ${PREFIX}/share/examples/urlview

.include <bsd.port.mk>
