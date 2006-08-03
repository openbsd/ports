# $OpenBSD: Makefile,v 1.19 2006/08/03 13:09:09 espie Exp $

COMMENT=	"local mail delivery agent with filtering abilities"
COMMENT-utils=	"userdb and quota tools for the Courier mail suite"

VERSION=	1.7.0
DISTNAME=	maildrop-${VERSION}
CATEGORIES=    	mail

HOMEPAGE=	http://www.courier-mta.org/maildrop/
MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

MASTER_SITES=  	${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX=	.tar.bz2

FLAVORS=	ldap mysql
FLAVOR?=

MULTI_PACKAGES=	-utils
SUBPACKAGE?=

FULLPKGNAME-utils= courier-utils-${VERSION}p2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=            gdbm.>=3::databases/gdbm

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" 
MAKE_ENV=		INCLUDES="-I${LOCALBASE}/include"
CONFIGURE_ARGS=		--datadir=${PREFIX}/share/doc \
			--enable-sendmail=/usr/sbin/sendmail \
			--enable-maildrop-gid=bin \
			--disable-tempdir --enable-restricted-trusted=1 \
			--enable-syslog=1 --with-etcdir=${SYSCONFDIR} \
			--with-db=gdbm --enable-userdb --enable-maildirquota

DOCFILES=		README INSTALL UPGRADE README.postfix

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=		ldap,lber::databases/openldap
CONFIGURE_ARGS+=	--enable-maildropldap \
			--with-ldapconfig=${SYSCONFDIR}/maildropldap.config 
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=           mysqlclient::databases/mysql
CONFIGURE_ARGS+=        --enable-maildropmysql
WANTLIB=		crypto ssl z
.endif

.if defined(PACKAGING) && $(SUBPACKAGE) == "-utils"
LIB_DEPENDS=
WANTLIB+=		c
.else
WANTLIB+=		c m stdc++
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/maildrop
.for i in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/maildrop
.endfor
.if ${FLAVOR:L:Mldap}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/maildrop
	${INSTALL_DATA} ${WRKSRC}/maildropldap.config ${PREFIX}/share/examples/maildrop
.endif
.if ${FLAVOR:L:Mmysql}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/maildrop
	${INSTALL_DATA} ${WRKSRC}/maildropmysql.config ${PREFIX}/share/examples/maildrop
.endif

.include <bsd.port.mk>
