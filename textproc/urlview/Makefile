# $OpenBSD: Makefile,v 1.2 2000/09/06 05:48:49 brad Exp $

DISTNAME=	urlview-0.9
CATEGORIES=	textproc
NEED_VERSION=	1.324
MASTER_SITES=	ftp://ftp.mutt.org/pub/mutt/contrib/ \
		ftp://ftp.cs.hmc.edu/pub/me/ \
		ftp://ftp.cs.tu-berlin.de/pub/net/mail/mutt/ \
		ftp://ftp.ilog.fr/pub/Mirrors/mutt/contrib/ \
		ftp://ftp.etri.re.kr/pub/mail/mutt/ \
		ftp://ftp.pnm.net/pub/unix/mutt/contrib/

MAINTAINER=	seb@gosh.todesplanet.de

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

FLAVORS=	slang
FLAVOR?=

.if ${FLAVOR:L:Mslang}
LIB_DEPENDS=	slang.14::devel/libslang
CONFIGURE_ARGS=	--with-slang=${LOCALBASE}
CONFIGURE_ENV=	LIBS=-lcurses
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/urlview
	${INSTALL_DATA} ${WRKSRC}/sample.urlview ${WRKSRC}/url_handler.sh \
	     ${PREFIX}/share/examples/urlview

.include <bsd.port.mk>
