# $OpenBSD: Makefile,v 1.5 1999/03/31 21:46:19 brad Exp $

DISTNAME=	wget-1.5.3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= wget

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext

GNU_CONFIGURE=	yes

pre-configure:
	${RM} ${WRKSRC}/doc/wget.info*

post-install:
	if [ ! -f ${PREFIX}/info/dir ]; then \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	-install-info ${PREFIX}/info/wget.info ${PREFIX}/info/dir

.include <bsd.port.mk>
