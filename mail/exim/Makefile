# $OpenBSD: Makefile,v 1.19 2001/02/22 20:03:43 danh Exp $

DISTNAME=	exim-3.20
CATEGORIES=	mail
NEED_VERSION=	1.324
MASTER_SITES=	ftp://ftp.cus.cam.ac.uk/pub/software/programs/exim/ \
		ftp://ftp.exim.org/pub/exim/ \
		ftp://ftp.fu-berlin.de/unix/mail/exim/
DISTFILES=	exim-3.20.tar.gz exim-texinfo-3.20.tar.gz

HOMEPAGE=	http://www.exim.org/

MAINTAINER=	Peter Galbavy <peter.galbavy@knowledge.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# ldap - once openldap is supported by exim
FLAVORS=	no_x11 no_perl mysql pgsql ldap no_tls
FLAVOR?=

MAKE_ENV=	FLAVOR="${FLAVOR}"

EXIM_MAKECAT=
EXIM_LOOKUP_INCLUDE=
EXIM_LOOKUP_LIB=

.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
EXIM_MAKECAT+=	"EXIM_MONITOR=eximon.bin\n"
.endif

.if !${FLAVOR:L:Mno_perl}
EXIM_MAKECAT+=	"EXIM_PERL=perl.o\n"
.endif

.if ${FLAVOR:L:Mldap}
BUILD_DEPENDS+=	${LOCALBASE}/lib/libldap.a::databases/openldap
EXIM_MAKECAT+=	"LOOKUP_LDAP=yes\nLDAP_LIB_TYPE=OPENLDAP2\n"
EXIM_LOOKUP_INCLUDE+=	-I${LOCALBASE}/include
EXIM_LOOKUP_LIBS+=	-L${LOCALBASE}/lib -lldap -llber
.endif

.if ${FLAVOR:L:Mmysql}
LIBS+=		${LOCALBASE}/lib/mysql
BUILD_DEPENDS+=	${LOCALBASE}/lib/mysql/libmysqlclient.a::databases/mysql
EXIM_MAKECAT+=	"LOOKUP_MYSQL=yes\n"
EXIM_LOOKUP_INCLUDE+=	-I${LOCALBASE}/include/mysql
EXIM_LOOKUP_LIBS+=	-L${LOCALBASE}/lib/mysql -lmysqlclient
.endif

.if ${FLAVOR:L:Mpgsql}
BUILD_DEPENDS+=	${LOCALBASE}/lib/pgsql/libpq.a::databases/postgresql
EXIM_MAKECAT+=	"LOOKUP_PGSQL=yes\n"
EXIM_LOOKUP_INCLUDE+=	-I${LOCALBASE}/include/pgsql
EXIM_LOOKUP_LIBS+=	-L${LOCALBASE}/lib/pgsql -lpq
.endif

.if !${FLAVOR:L:Mno_tls}
EXIM_MAKECAT+=	"SUPPORT_TLS=yes\nTLS_LIBS=-lssl -lcrypto\n"
.endif


do-configure:
	@mkdir -p ${WRKSRC}/Local
	@cp ${FILESDIR}/Makefile ${WRKSRC}/Local
.if !${FLAVOR:L:Mno_x11}
	@cp ${FILESDIR}/eximon.conf ${WRKSRC}/Local
.endif
	@echo -n ${EXIM_MAKECAT} >> ${WRKSRC}/Local/Makefile
	@echo "LOOKUP_INCLUDE=${EXIM_LOOKUP_INCLUDE}">>${WRKSRC}/Local/Makefile
	@echo "LOOKUP_LIBS=${EXIM_LOOKUP_LIBS}">>${WRKSRC}/Local/Makefile
	@cd ${WRKSRC}/doc ; \
	for i in ../../exim-texinfo-3.20/doc/* ; do \
		ln -sf $$i ; \
	done

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/exim

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/exim
	${INSTALL_DATA} ${WRKSRC}/doc/spec.txt ${PREFIX}/share/doc/exim/spec.txt

.include <bsd.port.mk>
