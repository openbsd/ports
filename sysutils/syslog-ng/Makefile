# $OpenBSD: Makefile,v 1.4 2004/12/20 10:35:36 alek Exp $

COMMENT=	syslogd replacement

CATEGORIES=	sysutils

DISTNAME=	syslog-ng-1.6.4
LIBOL=		libol-0.3.13

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITE_SYSLOGNG=\
	http://www.balabit.hu/downloads/

MASTER_SITES=	${MASTER_SITE_SYSLOGNG:=syslog-ng/1.6/src/}
MASTER_SITES0=	${MASTER_SITE_SYSLOGNG:=libol/0.3/}

HOMEPAGE=	http://www.balabit.hu/en/downloads/syslog-ng/

DISTFILES=	${DISTNAME}.tar.gz \
		${LIBOL}.tar.gz:0

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c wrap 

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libol=${WRKDIR}/${LIBOL} \
			--enable-tcp-wrapper

DOC=		${PREFIX}/share/doc/syslog-ng
EXAMPLES=	${PREFIX}/share/examples/syslog-ng

pre-configure:
	cp -f ${PORTSDIR}/infrastructure/db/config.guess \
	      ${PORTSDIR}/infrastructure/db/config.sub ${WRKDIR}/${LIBOL}
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
