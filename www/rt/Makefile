# $OpenBSD: Makefile,v 1.1.1.1 2007/03/19 23:42:20 msf Exp $

COMMENT=		"industrial-grade ticketing system"

DISTNAME=		rt-3.6.3
CATEGORIES=		www

HOMEPAGE=		http://www.bestpractical.com/rt/

MAINTAINER=		Mathieu Sauve-Frankel <msf@openbsd.org>

MASTER_SITES=		http://www.fsck.com/pub/rt/release/ \
			ftp://ftp.eu.uu.net/pub/unix/ticketing/rt/release/

RUN_DEPENDS=		::converters/p5-Calendar-Simple \
			::databases/p5-DBIx-SearchBuilder \
			::devel/p5-Locale-Maketext-Fuzzy \
			::devel/p5-Locale-Maketext-Lexicon \
			::devel/p5-Log-Dispatch \
			::devel/p5-MLDBM \
			::devel/p5-Module-Refresh \
			::devel/p5-Module-Versions-Report \
			::devel/p5-Term-ReadKey \
			::devel/p5-Test-Inline \
			::devel/p5-Test-WWW-Mechanize \
			::devel/p5-Tree-Simple \
			::devel/p5-Time-modules \
			::devel/p5-Universal-require \
			::graphics/p5-GD-Graph \
			::mail/p5-MIME-tools \
			::textproc/p5-Regexp-Common \
			::textproc/p5-Text-Quoted \
			::textproc/p5-Text-Template \
			::textproc/p5-Text-WikiFormat \
			::textproc/p5-Text-Wrapper \
			::textproc/p5-XML-RSS \
			::textproc/p5-XML-Simple \
			::www/p5-Apache-DBI \
			::www/p5-Apache-Session \
			::www/p5-Apache-Test \
			::www/p5-HTML-Format \
			::www/p5-HTML-Scrubber \
			::www/p5-HTTP-Server-Simple-Mason 

# GPL
PERMIT_PACKAGE_CDROM=   Yes 
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=   Yes 

NO_BUILD=		Yes

PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-rt-group=bin \
			--enable-layout=OpenBSD

FLAVORS=		pgsql sqlite
FLAVOR?=

.if ${FLAVOR:L:Mpgsql}
RUN_DEPENDS+=		::databases/p5-DBD-Pg
CONFIGURE_ARGS+=	--with-db-type=Pg
.elif ${FLAVOR:L:Msqlite}
RUN_DEPENDS+=		::databases/p5-DBD-SQLite
CONFIGURE_ARGS+=	--with-db-type=SQLite
.else
RUN_DEPENDS+=		::databases/p5-DBD-mysql
.endif

# needs an initialized database and /etc/rt3/RT_Config.pm to be present
REGRESS_IS_INTERACTIVE=	Yes
REGRESS_TARGET=		test

pre-configure:
	@perl -pi -e 's#%%PREFIX%%#${PREFIX}#' ${WRKSRC}/config.layout
	@perl -pi -e 's#%%SYSCONFDIR%%#${SYSCONFDIR}#' ${WRKSRC}/config.layout

post-install:
	@for e in fcgi scgi svc; do \
		mv ${PREFIX}/bin/mason_handler.$$e \
	       	   ${PREFIX}/bin/rt-mason_handler.$$e;\
	done
	@mv ${PREFIX}/bin/standalone_httpd ${PREFIX}/bin/rt-standalone_httpd
	@mv ${PREFIX}/bin/webmux.pl ${PREFIX}/bin/rt-webmux.pl
	
.include <bsd.port.mk>
