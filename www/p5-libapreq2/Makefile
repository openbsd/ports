COMMENT=	apache HTTP server request library

DISTNAME=	libapreq2-2.16
# can't use perl module with autoconf; p5- prefix added manually here
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www

SHARED_LIBS=	apreq2	9.0

# Artistic + GPL
PERMIT_PACKAGE=	Yes

WANTLIB += apr-1 aprutil-1 c db expat iconv perl pthread

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/S/SH/SHAY/}

MODPERL_REGEN_PPPORT =	glue/perl/xsbuilder/ppport.h

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-perl-glue \
		--with-apache2-apxs=${LOCALBASE}/sbin/apxs2

BUILD_DEPENDS=	devel/p5-ExtUtils-XSBuilder \
		www/ap2-mod_perl
LIB_DEPENDS=	converters/libiconv \
		devel/apr \
		devel/apr-util

RUN_DEPENDS =	www/ap2-mod_perl

# module perl is not used, regen ppport explicitly
pre-configure:
	@echo "Regenerating ${MODPERL_REGEN_PPPORT}"
	@cd ${WRKDIST} && \
	mv ${MODPERL_REGEN_PPPORT} ${MODPERL_REGEN_PPPORT}.orig.ppport; \
	perl -MDevel::PPPort\
	    -e'Devel::PPPort::WriteFile("${MODPERL_REGEN_PPPORT}")'

post-test:
	cd ${WRKSRC}/glue/perl && \
	    LD_LIBRARY_PATH="${WRKSRC}/library/.libs:${LOCALBASE}" ${MAKE} test

.include <bsd.port.mk>
