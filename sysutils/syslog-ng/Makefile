# $OpenBSD: Makefile,v 1.1.1.1 2002/10/05 14:18:16 jakob Exp $

COMMENT=	syslogd replacement

DISTNAME=	syslog-ng-1.4.16
LIBOL=		libol-0.2.23
CATEGORIES=	sysutils

MASTER_SITES=	http://www.balabit.hu/downloads/syslog-ng/1.4/
MASTER_SITES0=	http://www.balabit.hu/downloads/libol/0.2/

HOMEPAGE=	http://www.balabit.hu/en/downloads/syslog-ng/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

DISTFILES=	${DISTNAME}.tar.gz \
		${LIBOL}.tar.gz:0

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libol=${WRKDIR}/${LIBOL}

DOC=		${PREFIX}/share/doc/syslog-ng
EXAMPLES=	${PREFIX}/share/examples/syslog-ng

pre-configure:
	cd ${WRKDIR}/${LIBOL}; ./configure ; ${MAKE}

post-install:
	${INSTALL_DATA_DIR} ${DOC}
	${INSTALL_DATA} ${WRKSRC}/doc/sgml/*.{ps,sgml,txt} ${DOC}
	(cd ${DOC} ;\
	tar xzf ${WRKSRC}/doc/sgml/syslog-ng.html.tar.gz ;\
	ln -s book1.html syslog-ng.html/index.html )
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/doc/syslog-ng.conf.sample ${EXAMPLES}

.include <bsd.port.mk>
