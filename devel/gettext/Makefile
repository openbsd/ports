# $OpenBSD: Makefile,v 1.28 2002/11/29 05:07:01 brad Exp $
# $FreeBSD: Makefile,v 1.4 1998/11/18 15:09:35 vanilla Exp $

COMMENT=	"GNU gettext"

DISTNAME=	gettext-0.10.40
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}

HOMEPAGE=	http://www.gnu.org/software/gettext/

MODULES=	iconv

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --with-included-gettext
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/intl/.libs -L${LOCALBASE}/lib"

post-extract:
	@rm -f ${WRKSRC}/doc/gettext.info*

post-install:
	${INSTALL_DATA} ${WRKSRC}/misc/po-mode.el \
		${PREFIX}/share/gettext/po-mode.el
	@cd ${PREFIX}/lib && \
		mv libintl.la libintl.la.new && \
		sed -e s#'-L${WRKBUILD}/intl/.libs '#''#g \
			libintl.la.new > libintl.la && \
		chown ${BINOWN}:${BINGRP} libintl.la && \
		rm -f libintl.la.new

do-regress:
	@cd ${WRKBUILD}/tests && ${MAKE_PROGRAM} check-TESTS

.include <bsd.port.mk>
