# $OpenBSD: Makefile,v 1.7 1999/03/31 23:39:55 brad Exp $

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
	${RM} ${WRKSRC}/doc/wget.info*

post-install:
	if [ ! -f ${PREFIX}/info/dir ]; then \
		sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	@install-info ${PREFIX}/info/wget.info ${PREFIX}/info/dir
	@${MKDIR} ${PREFIX}/lib/wget
	@${INSTALL_DATA} ${WRKSRC}/doc/sample.wgetrc ${PREFIX}/lib/wget/wgetrc.sample
	@${ECHO} ""
	@${ECHO} "*** The latest version of the wgetrc file"
	@${ECHO} "*** can be found in ${PREFIX}/lib/wget"
	@if [ -f /etc/wgetrc ]; then \
	  ${ECHO} "*** Your /etc/wgetrc has NOT been changed"; \
	 else \
	  cp ${PREFIX}/lib/wget/wgetrc.sample /etc; \
	  ${ECHO} "*** wgetrc has been copied into /etc"; \
	 fi
	@${ECHO} ""


.include <bsd.port.mk>
