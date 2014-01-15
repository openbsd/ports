# $OpenBSD: Makefile,v 1.35 2014/01/15 02:24:45 jeremy Exp $

COMMENT=		ruby interface to Berkeley DB
DISTNAME=		bdb-0.6.5
REVISION=		8
CATEGORIES=		databases

HOMEPAGE=		http://rubyforge.org/projects/bdb/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://rubyforge.org/frs/download.php/56887/

MODULES= 		lang/ruby

WANTLIB=		lib/db4/db>=4
LIB_DEPENDS=		databases/db/v4

CONFIGURE_STYLE=	ruby extconf
CONFIGURE_ARGS=		--with-db-include="${PREFIX}/include/db4" \
			--with-db-version=""

INSTALL_TARGET= 	site-install

DOCS=			Changes README.en bdb.html bdb.rd
EXAMPLES=		basic.rb cats.rb clean.rb cursor.rb \
			func.rb join.rb lock.rb log.rb \
			queue.rb recno.rb record.rb txn.rb \
			zeroc.rb wordlist wordtest

DOC_DIR=		${MODRUBY_DOCDIR}/bdb
EXAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/bdb

FLAVORS=		ruby18 ruby19 ruby20
FLAVOR?=		ruby20

pre-install:
		@perl -i -pe 's,/usr,${LOCALBASE},' ${WRKSRC}/examples/*.rb

do-test:
		@cd ${WRKSRC} && make test

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
