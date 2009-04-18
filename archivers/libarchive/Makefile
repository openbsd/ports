# $OpenBSD: Makefile,v 1.10 2009/04/18 18:22:49 naddy Exp $

COMMENT=	library for reading and writing streaming archives

V=		2.7.0
DISTNAME=	libarchive-$V
SHARED_LIBS +=  archive              4.0      # .9.0
CATEGORIES=	archivers
HOMEPAGE=	http://code.google.com/p/libarchive/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://libarchive.googlecode.com/files/
MASTER_SITES0=	http://shell.uugrn.org/~naddy/
DISTFILES=	libarchive-$V.tar.gz \
		libarchive-catpages-$V.tar.gz:0

WANTLIB=	c crypto z
LIB_DEPENDS=	bz2.>=10::archivers/bzip2 \
		lzmadec.>=0::archivers/lzma

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-lzma		# xz, liblzma
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build/autoconf

# Our groff is too old.  We need to format the man pages on a
# FreeBSD system.

MAN_fragment= \
	MAN=`(printf 'mans:\n\t@echo $$(man_MANS)\n'; cat Makefile) | \
		make -f - mans`

post-install:
	@cd ${WRKSRC}; \
	${MAN_fragment}; \
	for m in $$MAN; do \
		${INSTALL_MAN} $${m%.[1-9]}.0 \
		    ${PREFIX}/man/cat$${m#$${m%[1-9]}}/; \
	done

# convenience target for maintainer
FREEBSDHOST=	lorvorc
update-catpages:
	@cd ${WRKSRC}; \
	${MAN_fragment}; \
	for m in $$MAN; do \
		echo -n "Formatting $$m ..."; \
		ssh ${FREEBSDHOST} nroff -mdoc <$$m >$${m%.[1-9]}.0 ; \
		CAT="$$CAT $${m%.[1-9]}.0" ; \
		echo " done." ; \
	done; \
	pax -w -s ',^,${DISTNAME}/,' $$CAT | \
	    gzip >${FULLDISTDIR}/libarchive-catpages-$V.tar.gz

.include <bsd.port.mk>
