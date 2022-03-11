CATEGORIES=	devel

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
# XXX: Breaks with -Wbounded 
CONFIGURE_ARGS+=	--disable-werror
