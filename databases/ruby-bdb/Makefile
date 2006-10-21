# $OpenBSD: Makefile,v 1.1.1.1 2006/10/21 17:31:18 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		"ruby interface to Berkeley DB"
DISTNAME=		bdb-0.5.9
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		databases ruby

HOMEPAGE=		http://moulon.inra.fr/ruby/bdb.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		ftp://moulon.inra.fr/pub/ruby/

MODULES= 		lang/ruby

LIB_DEPENDS=		db.>=4.2::databases/db/v4 \
			ruby.>=1::lang/ruby

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--with-db-include="${PREFIX}/include/db4" \
			--with-db-version=""

INSTALL_TARGET= 	site-install
REGRESS_TARGET= 	test

DOCS=			Changes README.en bdb.html bdb.rd
EXAMPLES=		basic.rb cats.rb clean.rb cursor.rb \
			func.rb join.rb lock.rb log.rb \
			queue.rb recno.rb record.rb txn.rb \
			zeroc.rb wordlist wordtest

DOC_DIR=		${MODRUBY_DOCDIR}/ruby-bdb
EXAMPLE_DIR=		${MODRUBY_EXAMPLEDIR}/ruby-bdb

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
