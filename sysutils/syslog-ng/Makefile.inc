# $OpenBSD: Makefile.inc,v 1.1 2002/10/06 13:15:55 jakob Exp $

COMMENT=	syslogd replacement

CATEGORIES=	sysutils

HOMEPAGE=	http://www.balabit.hu/en/downloads/syslog-ng/

MASTER_SITE_SYSLOGNG=\
	http://www.balabit.hu/downloads/

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
