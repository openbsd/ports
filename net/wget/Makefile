# $OpenBSD: Makefile,v 1.8 1999/04/10 02:50:54 marc Exp $

DISTNAME=	wget-1.5.3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= wget

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I/usr/local/include" \
		LDFLAGS="-L/usr/local/lib"

pre-configure:
	@${RM} ${WRKSRC}/doc/wget.info*

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	@install-info ${PREFIX}/info/wget.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL


.include <bsd.port.mk>
