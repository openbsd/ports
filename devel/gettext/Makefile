# $OpenBSD: Makefile,v 1.22 2001/05/30 02:14:12 brad Exp $
# $FreeBSD: Makefile,v 1.4 1998/11/18 15:09:35 vanilla Exp $

COMMENT=	"GNU gettext"

DISTNAME=	gettext-0.10.38
CATEGORIES=	devel
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gettext

HOMEPAGE=	http://www.gnu.org/software/gettext/

LIB_DEPENDS=	iconv.2::converters/libiconv

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@rm -f ${WRKSRC}/doc/gettext.info*

pre-extract:
	@if [ -f ${LOCALBASE}/lib/libintl.so.?.? ]; then \
	   echo "+-------------------"; \
	   echo "| ERROR: you MUST remove the existing gettext installation"; \
	   echo "| before compiling this version. To fully remove run"; \
	   echo "| these commands as user root"; \
	   echo "|"; \
	   echo "|      pkg_delete -f `pkg_info -e 'gettext-*'`"; \
	   echo "|      ldconfig -R"; \
	   echo "|"; \
	   echo "+-------------------"; \
	   exit 1; \
	fi

post-install:
	${INSTALL_DATA} ${WRKSRC}/misc/po-mode.el \
		${PREFIX}/share/gettext/po-mode.el

.include <bsd.port.mk>
