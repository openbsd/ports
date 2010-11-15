# $OpenBSD: Makefile,v 1.21 2010/11/15 00:22:53 espie Exp $

COMMENT=		ruby interface to Berkeley DB
DISTNAME=		bdb-0.6.2
REVISION=		9
CATEGORIES=		databases

HOMEPAGE=		http://moulon.inra.fr/ruby/bdb.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://moulon.inra.fr/pub/ruby/

MODULES= 		lang/ruby

WANTLIB=		lib/db4/db>=4
LIB_DEPENDS=		db->=4,<5:databases/db/v4

CONFIGURE_STYLE=	ruby extconf
CONFIGURE_ARGS=		--with-db-include="${PREFIX}/include/db4" \
			--with-db-version=""

INSTALL_TARGET= 	site-install
REGRESS_TARGET= 	test

DOCS=			Changes README.en bdb.html bdb.rd
EXAMPLES=		basic.rb cats.rb clean.rb cursor.rb \
			func.rb join.rb lock.rb log.rb \
			queue.rb recno.rb record.rb txn.rb \
			zeroc.rb wordlist wordtest

DOC_DIR=		${MODRUBY_DOCDIR}/bdb
EXAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/bdb

pre-install:
		@perl -i -pe 's,/usr,${LOCALBASE},' ${WRKSRC}/examples/*.rb

post-install:
		${INSTALL_DATA_DIR} ${DOC_DIR}
		${INSTALL_DATA} ${WRKSRC}/docs/* ${DOC_DIR}
.for d in ${DOCS}
		${INSTALL_DATA} ${WRKSRC}/$d ${DOC_DIR}/$d
.endfor
		${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
.for e in ${EXAMPLES}
		${INSTALL_DATA} ${WRKSRC}/examples/$e ${EXAMPLE_DIR}/$e
.endfor

.include <bsd.port.mk>
